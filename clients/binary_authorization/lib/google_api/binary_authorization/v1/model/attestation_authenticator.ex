# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.BinaryAuthorization.V1.Model.AttestationAuthenticator do
  @moduledoc """
  An attestation authenticator that will be used to verify attestations. Typically this is just a set of public keys. Conceptually, an authenticator can be treated as always returning either "authenticated" or "not authenticated" when presented with a signed attestation (almost always assumed to be a [DSSE](https://github.com/secure-systems-lab/dsse) attestation). The details of how an authenticator makes this decision are specific to the type of 'authenticator' that this message wraps.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-provided name for this `AttestationAuthenticator`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  *   `pkixPublicKeySet` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet.t`, *default:* `nil`) - Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set validates the attestation signature, then the signature is considered authenticated (i.e. any one key is sufficient to authenticate).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :pkixPublicKeySet => GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet.t() | nil
        }

  field(:displayName)
  field(:pkixPublicKeySet, as: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.AttestationAuthenticator do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.AttestationAuthenticator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.AttestationAuthenticator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
