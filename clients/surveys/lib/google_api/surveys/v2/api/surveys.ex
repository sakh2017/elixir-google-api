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

defmodule GoogleApi.Surveys.V2.Api.Surveys do
  @moduledoc """
  API calls for all endpoints tagged `Surveys`.
  """

  alias GoogleApi.Surveys.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Removes a survey from view in all user GET requests.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - survey_url_id (String.t): External URL ID for the survey.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.SurveysDeleteResponse{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.SurveysDeleteResponse.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_delete(connection, survey_url_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/surveys/{surveyUrlId}", %{
        "surveyUrlId" => URI.encode_www_form(survey_url_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.SurveysDeleteResponse{}])
  end

  @doc """
  Retrieves information about the specified survey.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - survey_url_id (String.t): External URL ID for the survey.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.Survey{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.Survey.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_get(connection, survey_url_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/surveys/{surveyUrlId}", %{
        "surveyUrlId" => URI.encode_www_form(survey_url_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.Survey{}])
  end

  @doc """
  Creates a survey.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Survey): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.Survey{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.Survey.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_insert(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/surveys")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.Survey{}])
  end

  @doc """
  Lists the surveys owned by the authenticated user.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): 
    - :startIndex (integer()): 
    - :token (String.t): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.SurveysListResponse{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.SurveysListResponse.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :startIndex => :query,
      :token => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/surveys")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.SurveysListResponse{}])
  end

  @doc """
  Begins running a survey.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - resource_id (String.t): 
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (SurveysStartRequest): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.SurveysStartResponse{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_start(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.SurveysStartResponse.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_start(connection, resource_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/surveys/{resourceId}/start", %{
        "resourceId" => URI.encode_www_form(resource_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.SurveysStartResponse{}])
  end

  @doc """
  Stops a running survey.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - resource_id (String.t): 
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.SurveysStopResponse{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_stop(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.SurveysStopResponse.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_stop(connection, resource_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:post)
      |> Request.url("/surveys/{resourceId}/stop", %{
        "resourceId" => URI.encode_www_form(resource_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.SurveysStopResponse{}])
  end

  @doc """
  Updates a survey. Currently the only property that can be updated is the owners property.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - survey_url_id (String.t): External URL ID for the survey.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Survey): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.Survey{}} on success
  {:error, info} on failure
  """
  @spec surveys_surveys_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Surveys.V2.Model.Survey.t()} | {:error, Tesla.Env.t()}
  def surveys_surveys_update(connection, survey_url_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/surveys/{surveyUrlId}", %{
        "surveyUrlId" => URI.encode_www_form(survey_url_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Surveys.V2.Model.Survey{}])
  end
end
