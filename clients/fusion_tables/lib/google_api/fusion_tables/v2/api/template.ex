# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.FusionTables.V2.Api.Template do
  @moduledoc """
  API calls for all endpoints tagged `Template`.
  """

  alias GoogleApi.FusionTables.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes a template

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table from which the template is being deleted
  - template_id (integer()): Identifier for the template which is being deleted
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_delete(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def fusiontables_template_delete(
        connection,
        table_id,
        template_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates/{templateId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "templateId" => template_id
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves a specific template by its id

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table to which the template belongs
  - template_id (integer()): Identifier for the template that is being requested
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_get(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Template.t()} | {:error, Tesla.Env.t()}
  def fusiontables_template_get(
        connection,
        table_id,
        template_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates/{templateId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "templateId" => template_id
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Template{}])
  end

  @doc """
  Creates a new template for the table.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table for which a new template is being created
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Template.t()} | {:error, Tesla.Env.t()}
  def fusiontables_template_insert(connection, table_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates", %{
        "tableId" => URI.encode_www_form(table_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Template{}])
  end

  @doc """
  Retrieves a list of templates.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Identifier for the table whose templates are being requested
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of templates to return. Optional. Default is 5.
    - :pageToken (String.t): Continuation token specifying which results page to return. Optional.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.TemplateList{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.TemplateList.t()} | {:error, Tesla.Env.t()}
  def fusiontables_template_list(connection, table_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates", %{
        "tableId" => URI.encode_www_form(table_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.TemplateList{}])
  end

  @doc """
  Updates an existing template. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table to which the updated template belongs
  - template_id (integer()): Identifier for the template that is being updated
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_patch(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Template.t()} | {:error, Tesla.Env.t()}
  def fusiontables_template_patch(
        connection,
        table_id,
        template_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates/{templateId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "templateId" => template_id
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Template{}])
  end

  @doc """
  Updates an existing template

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table to which the updated template belongs
  - template_id (integer()): Identifier for the template that is being updated
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_update(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Template.t()} | {:error, Tesla.Env.t()}
  def fusiontables_template_update(
        connection,
        table_id,
        template_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/fusiontables/v2/tables/{tableId}/templates/{templateId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "templateId" => template_id
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Template{}])
  end
end
