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

defmodule GoogleApi.Testing.V1.Model.AndroidRuntimeConfiguration do
  @moduledoc """
  Android configuration that can be selected at the time a test is run.

  ## Attributes

  - locales ([Locale]): The set of available locales. @OutputOnly Defaults to: `null`.
  - orientations ([Orientation]): The set of available orientations. @OutputOnly Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :locales => list(GoogleApi.Testing.V1.Model.Locale.t()),
          :orientations => list(GoogleApi.Testing.V1.Model.Orientation.t())
        }

  field(:locales, as: GoogleApi.Testing.V1.Model.Locale, type: :list)
  field(:orientations, as: GoogleApi.Testing.V1.Model.Orientation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.AndroidRuntimeConfiguration do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.AndroidRuntimeConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.AndroidRuntimeConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
