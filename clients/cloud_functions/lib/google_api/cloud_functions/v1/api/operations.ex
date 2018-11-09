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

defmodule GoogleApi.CloudFunctions.V1.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias GoogleApi.CloudFunctions.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - operations_id (String.t): Part of &#x60;name&#x60;. The name of the operation resource.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_operations_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def cloudfunctions_operations_get(connection, operations_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/operations/{operationsId}", %{
        "operationsId" => URI.encode_www_form(operations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudFunctions.V1.Model.Operation{}])
  end

  @doc """
  Lists operations that match the specified filter in the request. If the server doesn&#39;t support this method, it returns &#x60;UNIMPLEMENTED&#x60;.  NOTE: the &#x60;name&#x60; binding allows API services to override the binding to use different resource name schemes, such as &#x60;users/*/operations&#x60;. To override the binding, API services can add a binding such as &#x60;\&quot;/v1/{name&#x3D;users/*}/operations\&quot;&#x60; to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :filter (String.t): The standard list filter.
    - :name (String.t): The name of the operation&#39;s parent resource.
    - :pageToken (String.t): The standard list page token.
    - :pageSize (integer()): The standard list page size.

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.ListOperationsResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_operations_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.ListOperationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_operations_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :filter => :query,
      :name => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/operations")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudFunctions.V1.Model.ListOperationsResponse{}]
    )
  end
end
