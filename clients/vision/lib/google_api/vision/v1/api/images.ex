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

defmodule GoogleApi.Vision.V1.Api.Images do
  @moduledoc """
  API calls for all endpoints tagged `Images`.
  """

  alias GoogleApi.Vision.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Run image detection and annotation for a batch of images.

  ## Parameters

  - connection (GoogleApi.Vision.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :body (BatchAnnotateImagesRequest): 

  ## Returns

  {:ok, %GoogleApi.Vision.V1.Model.BatchAnnotateImagesResponse{}} on success
  {:error, info} on failure
  """
  @spec vision_images_annotate(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Vision.V1.Model.BatchAnnotateImagesResponse.t()}
          | {:error, Tesla.Env.t()}
  def vision_images_annotate(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/images:annotate")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Vision.V1.Model.BatchAnnotateImagesResponse{}])
  end
end
