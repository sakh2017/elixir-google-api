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

defmodule GoogleApi.IAM.V1.Model.Role do
  @moduledoc """
  A role in the Identity and Access Management API.

  ## Attributes

  - deleted (boolean()): The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole. Defaults to: `null`.
  - description (String.t): Optional.  A human-readable description for the role. Defaults to: `null`.
  - etag (binary()): Used to perform a consistent read-modify-write. Defaults to: `null`.
  - includedPermissions ([String.t]): The names of the permissions this role grants when bound in an IAM policy. Defaults to: `null`.
  - name (String.t): The name of the role.  When Role is used in CreateRole, the role name must not be set.  When Role is used in output and other input such as UpdateRole, the role name is the complete path, e.g., roles/logging.viewer for curated roles and organizations/{ORGANIZATION_ID}/roles/logging.viewer for custom roles. Defaults to: `null`.
  - stage (String.t): The current launch stage of the role. If the &#x60;ALPHA&#x60; launch stage has been selected for a role, the &#x60;stage&#x60; field will not be included in the returned definition for the role. Defaults to: `null`.
    - Enum - one of [ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP]
  - title (String.t): Optional.  A human-readable title for the role.  Typically this is limited to 100 UTF-8 bytes. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleted => any(),
          :description => any(),
          :etag => any(),
          :includedPermissions => list(any()),
          :name => any(),
          :stage => any(),
          :title => any()
        }

  field(:deleted)
  field(:description)
  field(:etag)
  field(:includedPermissions, type: :list)
  field(:name)
  field(:stage)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.Role do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.Role.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.Role do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
