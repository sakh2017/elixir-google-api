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

defmodule GoogleApi.Jobs.V2.Model.LocationFilter do
  @moduledoc """
  Input only.  Geographic region of the search.

  ## Attributes

  - distanceInMiles (float()): Optional.   The distance_in_miles is applied when the location being searched for is identified as a city or smaller. When the location being searched for is a state or larger, this field is ignored. Defaults to: `null`.
  - isTelecommute (boolean()): Optional.  Allows the client to return jobs without a set location, specifically, telecommuting jobs (telecomuting is considered by the service as a special location. Job.allow_telecommute indicates if a job permits telecommuting. If this field is true, telecommuting jobs are searched, and name and lat_lng are ignored. This filter can be used by itself to search exclusively for telecommuting jobs, or it can be combined with another location filter to search for a combination of job locations, such as \&quot;Mountain View\&quot; or \&quot;telecommuting\&quot; jobs. However, when used in combination with other location filters, telecommuting jobs can be treated as less relevant than other jobs in the search response. Defaults to: `null`.
  - latLng (LatLng): Optional.  The latitude and longitude of the geographic center from which to search. This field is ignored if &#x60;location_name&#x60; is provided. Defaults to: `null`.
  - name (String.t): Optional.  The address name, such as \&quot;Mountain View\&quot; or \&quot;Bay Area\&quot;. Defaults to: `null`.
  - regionCode (String.t): Optional.  CLDR region code of the country/region of the address. This will be used to address ambiguity of the user-input location, e.g. \&quot;Liverpool\&quot; against \&quot;Liverpool, NY, US\&quot; or \&quot;Liverpool, UK\&quot;.  Set this field if all the jobs to search against are from a same region, or jobs are world-wide but the job seeker is from a specific region.  See http://cldr.unicode.org/ and http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \&quot;CH\&quot; for Switzerland. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distanceInMiles => any(),
          :isTelecommute => any(),
          :latLng => GoogleApi.Jobs.V2.Model.LatLng.t(),
          :name => any(),
          :regionCode => any()
        }

  field(:distanceInMiles)
  field(:isTelecommute)
  field(:latLng, as: GoogleApi.Jobs.V2.Model.LatLng)
  field(:name)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.LocationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.LocationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.LocationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
