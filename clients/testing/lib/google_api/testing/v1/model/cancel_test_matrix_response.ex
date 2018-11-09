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

defmodule GoogleApi.Testing.V1.Model.CancelTestMatrixResponse do
  @moduledoc """
  Response containing the current state of the specified test matrix.

  ## Attributes

  - testState (String.t): The current rolled-up state of the test matrix. If this state is already final, then the cancelation request will have no effect. Defaults to: `null`.
    - Enum - one of [TEST_STATE_UNSPECIFIED, VALIDATING, PENDING, RUNNING, FINISHED, ERROR, UNSUPPORTED_ENVIRONMENT, INCOMPATIBLE_ENVIRONMENT, INCOMPATIBLE_ARCHITECTURE, CANCELLED, INVALID]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :testState => any()
        }

  field(:testState)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.CancelTestMatrixResponse do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.CancelTestMatrixResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.CancelTestMatrixResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
