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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberAffixConfiguration do
  @moduledoc """
  This is a JSON template for a number affix resource.

  ## Attributes

  - few (LocalizedStringBundle): When the language requires special treatment of \&quot;small\&quot; numbers (as with 2, 3, and 4 in Czech; or numbers ending 2, 3, or 4 but not 12, 13, or 14 in Polish). Defaults to: `null`.
  - many (LocalizedStringBundle): When the language requires special treatment of \&quot;large\&quot; numbers (as with numbers ending 11-99 in Maltese). Defaults to: `null`.
  - one (LocalizedStringBundle): When the language requires special treatment of numbers like one (as with the number 1 in English and most other languages; in Russian, any number ending in 1 but not ending in 11 is in this class). Defaults to: `null`.
  - other (LocalizedStringBundle): When the language does not require special treatment of the given quantity (as with all numbers in Chinese, or 42 in English). Defaults to: `null`.
  - two (LocalizedStringBundle): When the language requires special treatment of numbers like two (as with 2 in Welsh, or 102 in Slovenian). Defaults to: `null`.
  - zero (LocalizedStringBundle): When the language requires special treatment of the number 0 (as in Arabic). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :few => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :many => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :one => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :other => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :two => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :zero => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t()
        }

  field(:few, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
  field(:many, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
  field(:one, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
  field(:other, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
  field(:two, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
  field(:zero, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)
end

defimpl Poison.Decoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberAffixConfiguration do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberAffixConfiguration.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberAffixConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
