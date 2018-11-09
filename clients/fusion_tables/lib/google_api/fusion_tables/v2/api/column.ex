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

defmodule GoogleApi.FusionTables.V2.Api.Column do
  @moduledoc """
  API calls for all endpoints tagged `Column`.
  """

  alias GoogleApi.FusionTables.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the specified column.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table from which the column is being deleted.
  - column_id (String.t): Name or identifier for the column being deleted.
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
  @spec fusiontables_column_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def fusiontables_column_delete(
        connection,
        table_id,
        column_id,
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns/{columnId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "columnId" => URI.encode_www_form(column_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves a specific column by its ID.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table to which the column belongs.
  - column_id (String.t): Name or identifier for the column that is being requested.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Column{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_column_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Column.t()} | {:error, Tesla.Env.t()}
  def fusiontables_column_get(connection, table_id, column_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns/{columnId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "columnId" => URI.encode_www_form(column_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Column{}])
  end

  @doc """
  Adds a new column to the table.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table for which a new column is being added.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Column): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Column{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_column_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Column.t()} | {:error, Tesla.Env.t()}
  def fusiontables_column_insert(connection, table_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns", %{
        "tableId" => URI.encode_www_form(table_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Column{}])
  end

  @doc """
  Retrieves a list of columns.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table whose columns are being listed.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of columns to return. Default is 5.
    - :pageToken (String.t): Continuation token specifying which result page to return.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.ColumnList{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_column_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.ColumnList.t()} | {:error, Tesla.Env.t()}
  def fusiontables_column_list(connection, table_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns", %{
        "tableId" => URI.encode_www_form(table_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.ColumnList{}])
  end

  @doc """
  Updates the name or type of an existing column. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table for which the column is being updated.
  - column_id (String.t): Name or identifier for the column that is being updated.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Column): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Column{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_column_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Column.t()} | {:error, Tesla.Env.t()}
  def fusiontables_column_patch(
        connection,
        table_id,
        column_id,
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns/{columnId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "columnId" => URI.encode_www_form(column_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Column{}])
  end

  @doc """
  Updates the name or type of an existing column.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String.t): Table for which the column is being updated.
  - column_id (String.t): Name or identifier for the column that is being updated.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Column): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Column{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_column_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.FusionTables.V2.Model.Column.t()} | {:error, Tesla.Env.t()}
  def fusiontables_column_update(
        connection,
        table_id,
        column_id,
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
      |> Request.url("/fusiontables/v2/tables/{tableId}/columns/{columnId}", %{
        "tableId" => URI.encode_www_form(table_id),
        "columnId" => URI.encode_www_form(column_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FusionTables.V2.Model.Column{}])
  end
end
