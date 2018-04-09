<%@include file="/apps/itchotelsonline/components/global.jsp"%>


<!--<link rel="stylesheet" href="/apps/itchotelsonline/components/content/reservationwidgetV2/clientlibs/css/reserWid.css" type="text/css">
<link rel="stylesheet" href="/apps/itchotelsonline/components/content/reservationwidgetV2/clientlibs/css/style.css" type="text/css">-->
<cq:includeClientLib css="reservationwidgetV2"/>
<sling:adaptTo adaptable="${resource}"
               adaptTo="com.itc.hotels.components.content.reservationwidgetV2.reservationWidgetV2"
               var="reservationWidgetV2"/>

<input type="hidden" id="configText" value = "${properties.searchBoxText}">
<input type="hidden" id="configImg" value ="${properties.backimage}">
<input type="hidden" id="configValue" value ="${properties.reservationButtonForMobile}">
<input type="hidden" id="configSpecial" value ="${properties.addSpecialRateTextBox}">
<input type="hidden" id="excludeValue" value ="${currentPage.properties.excludeReservationWidgetDesktop}">
<input type="hidden" id="configAdultPopup" value ="${properties.adultsTextOverPopup}">
<input type="hidden" id="configChildPopup" value ="${properties.childrenTextOverPopup}">
<input type="hidden" id="configRoomPopup" value ="${properties.roomTextOverPopup}">
<input type="hidden" id="openWidgetConfig" value ="${currentPage.properties.openReservationWidget}">

<input type="hidden" id="configMaxAdult" value ="${properties.maxAdultError}">
<input type="hidden" id="configMaxOccupt" value ="${properties.maxOccupError}">


<input type="hidden" id="configRoom" value ="${properties.roomsTextBoxDesktop}">
<input type="hidden" id="configAdult" value ="${properties.adultTextBoxDesktop}">
<input type="hidden" id="configChild" value ="${properties.childrenTextBoxDesktop}">

	<div style="display:none">
	<input type="hidden" id="reservationHotelPagePathWid" value="${properties.reservationHotelPagePath}"/>
	<input type="hidden" id="reservationRoomPagePathWid" value="${properties.reservationRoomPagePath}"/>
	<input type="hidden" id="flexibleDatesPagePathWid" value="${properties.flexibleDatesPagePath}"/>
	</div>



    	<!-- mobile Start /-->
<c:if test = "${currentPage.properties.excludeReservationWidgetMobile ne 'true'}">
<div class="overlayCont">


<a class="overlayCloBtn"></a>

<div class="mob">

    <a id="goBckBtn"></a>
	<a id="calGoBckBtn"></a>

    		<div class="tpCnt">
    			<div class="logo"><img alt="" src="/etc/designs/itchotelsonline/clientlibs/images/logoBlk.png"></div>
    			<a class="menuCloBtn"></a>
    			<div class="clear"></div>
    		</div>
    	<div class="clear"></div>

    	<!-- resSearM started /-->
    	<div class="resSearM">
    		<!-- Reservations Start /-->
    		<div class="reserCont" id="mobRes">
    			<!-- resWhiCont started /-->
    			<div class="resWhiCont" id="mstayat_cont">
    				<!-- resWhiInn started /-->
    				<div class="resWhiInn">
    				 <div class="reserInnWrp">
  <!--  					<h3 class="reserHd">Find a hotel</h3> -->
    					<div class="clear"></div>
    						 <div class="reserInpWrp">
                              <a class="reserSerIc" href="#"></a>
                                 <textarea id="mstayat_txt" type="text" rows="1" class="reserInp" spellcheck="false" placeholder="Find a hotel"></textarea>
    						 </div>
    						 <div class="clear"></div>

                         <div class="homeReserScreenCont">
    						    <div class="calenderWrapper"><!-- Calender Select Wrapper-->
                                                    <div class="contBox1">
                                                        <div class="chekInDate">15</div>
                                                        <div class="dayMonth"><span>Sat</span> <span>JUL</span></div>
                                                    </div>

                                                    <div class="contBox2">
                                                        <span class="nights">1</span>
                                                        <span class="nightsText">&#65293&nbsp;Night&nbsp;&#65293</span>
                                                    </div>

                                                    <div class="contBox3">
                                                        <div class="chekInDate">16</div>
                                                        <div class="dayMonth"><span>Sun</span><span>JUL</span></div>
                                                    </div>

                                </div><!-- Calender Select Wrapper Ends-->

                                <div class="rmAdltChldWrapper"><!--Room Adult Child Select Wrapper-->

                                                     <div class="roomSelect">
                                                         <span>${properties.roomsTextBox}&nbsp;&nbsp;</span>
                                                         <span id="rmNumber">
                                                             <span>1</span>&nbsp;
                                                             <!--<i class="fa fa-chevron-down" aria-hidden="true"></i>-->
                                                             <a id="rmAdltChldchevrondown"></a>
                                                         </span>
                                                     </div>

                                                     <div class="adultSelect">
                                                         <span>${properties.adultTextBox}&nbsp;&nbsp;</span>
                                                         <span id="rmNumber">
                                                             <span>1</span>&nbsp;

                                                             <a id="rmAdltChldchevrondown"></a>
                                                         </span>
                                                     </div>

                                                     <div class="childSelect">
                                                         <span>${properties.childrenTextBox}&nbsp;&nbsp;</span>
                                                         <span id="rmNumber">
                                                             <span>0</span>&nbsp;

                                                             <a id="rmAdltChldchevrondown"></a>
                                                         </span>
                                                     </div>

                                </div><!--Room Adult Child Select Wrapper Ended-->

                             <div class="rmAdltChldPopUpWrapper">
                               <div class="selectionMsg">Please Select Adults / Room</div>
                                <div class="rmAdltChldPopUp" data-rel="room"><!--ROOM ADULT CHILD SELECT MODAL POPUP STARTS-->

                                    <div class="option option_first">
                                            <span>0</span>
                                            <span id="radioInp"><input id="radio1" type="radio" class="inp" value="0"><label for="radio1"><i class="fa fa-circle-o fa-lg" aria-hidden="true"></i></label></span>
                                        </div>
                                        <div class="option option_second">
                                            <span>1</span>
                                            <span id="radioInp"><input id="radio2" type="radio" class="inp" value="1" checked="checked"><label for="radio2"><i class="fa fa-circle-o fa-lg" aria-hidden="true"></i></label></span>
                                        </div>
                                        <div class="option option_third">
                                            <span>2</span>
                                            <span id="radioInp"><input id="radio3" type="radio" class="inp" value="2"><label for="radio3"><i class="fa fa-circle-o fa-lg" aria-hidden="true"></i></label></span>
                                        </div>
                                        <div class="option option_fourth">
                                            <span>3</span>
                                            <span id="radioInp"><input id="radio4" type="radio" class="inp" value="3"><label for="radio4"><i class="fa fa-circle-o fa-lg" aria-hidden="true"></i></label></span>
                                        </div>
                                        <div class="option option_fifth">
                                            <span>4</span>
                                            <span id="radioInp"><input id="radio5" type="radio" class="inp" value="4"><label for="radio5"><i class="fa fa-circle-o fa-lg" aria-hidden="true"></i></label></span>
                                        </div>

                				</div><!--ROOM ADULT CHILD SELECT MODAL POPUP ENDS-->
                				<div class="popupValidationMsg"></div>
                			</div>

								<c:if test = "${properties.redeemPointSelection eq 'true'}">
                                <div class="clubItcInp">
                                                    <span id="clubItcInpWrapper">
                                                        <input type="checkbox" class="clubItcGreenPnts">
                                                        <a id="clubItcIcon"></a>
                                                        <label></label>
                                                     </span>
                                    <span>${properties.useClubITCTextBox}</span>
                                </div>
                             </c:if>
                              <c:if test = "${properties.specialRatesEnabling eq 'true'}">
								<div class="specialRates"><!-- Special Rates Started-->
                                                    <span>
                                                      <!-- <i class="fa fa-tag" aria-hidden="true"></i>-->
                                                        <a id="specialRateIcon"></a>
                                                    </span>
                                                    <span>${properties.addSpecialRateTextBox}</span>
                                </div><!-- Special Rates Ended-->
                                </c:if>
                                <div class="promoCode">
                                                    <input type="text" class="prmCd" spellcheck="false" placeholder="Enter your Special Promo Code">
                                </div>

                                <div class="srchSubmtButton">
                                    <span>${properties.submitbuttonTextBox}</span>
                                </div>

    						 </div>

    						 <div class="reserScrollMob">
    							  <ul id="mstayat" class="reserDrpUl dynamicDropdownAppendMob">

    							  </ul>
    						 </div>
    					</div>
    				</div>
    				<!-- resWhiInn end /-->
    			</div>
    			<!-- resWhiCont end /-->

    <!-- ----------------------   mCheckIn -------- resWhiCont started -------------------------------  /-->

    			<div id="mcheckin_cont" class="resWhiCont">
        				<div class="resWhiInn">
        					<div class="reserInpWrp scc mstay-at">
        						<span class="st">Stay At</span>
        						<a class="reserEditIc" href="javascript:;" onclick="medit_stayat();"></a>
        						<div class="clear"></div>
        						<span class="nd"></span>
        					</div>
        				</div>
        				<!--<div class="clear"></div>
        				<div class="resWhiInn">
        					<span class="reserHd">Check IN</span>
        				</div>
        				<div class="clear"></div>-->

                        <div class="resWhiInn">
        					<div class="reserHd chkIn">
                                <span>CHECK IN</span>
                                <span>21 JUL 2017</span>
                            </div>
                            <div class="reserHd chkOut">
                                <span>CHECK OUT</span>
                                <span></span>
                            </div>
        				</div>

        				<div id="e3" name="e3" class="checkinDateMob"> </div>
                        <div class="dateConfBtn dis">DONE</div>
        				<div class="chkCnt" id="flexibleDatesCheckInWidMob">
        					<input class="checkInFlexibleDatesMob" type="checkBox" id="cBxDetM">
        					<label class="lab2" for="cBxDetM" >Flexible Dates</label>
        				</div>
        			</div>

    <!--  --------------------- ------------      mCheckIn resWhiCont ended          ------------------------- /-->

    <!--  -------------------------------   mCheckOut   resWhiCont started  ------------------------------   /-->

    			<div id="mcheckout_cont" class="resWhiCont">
        				<div class="resWhiInn">
        					<div class="reserInpWrp scc mstay-at">
        						<span class="st">Stay At</span>
        						<a class="reserEditIc" href="javascript:;" onclick="medit_checkin();"></a>
        						<div class="clear"></div>
        						<span class="nd">New Delhi</span>
        					</div>
        					<div class="reserInpWrp scc mstay-checkin">
        						<span class="st">Check IN</span>
        						<a class="reserEditIc" href="javascript:;" onclick="medit_checkin()"></a>
        						<div class="clear"></div>
        						<span class="nd">New Delhi</span>
        					</div>
        				</div>
        				<!--<div class="clear"></div>
        				<div class="resWhiInn">
        					<span class="reserHd">Check OUT</span>
        				</div>
        				<div class="clear"></div>-->

                        <div class="resWhiInn">
        					<div class="reserHd chkIn">
                                <span>CHECK IN</span>
                                <span>21 JUL 2017</span>
                            </div>
                            <div class="reserHd chkOut">
                                <span>CHECK OUT</span>
                                <span>22 JUL 2017</span>
                            </div>
        				</div>
        				<div id="e4" name="e4" class="checkoutDateMob"> </div>
                        <div class="dateConfBtn dis">DONE</div>
        				<div class="chkCnt" id="flexibleDatesCheckOutWidMob">
        					<input class="checkoutFlexibleDatesMob" type="checkBox" id="cBxDetM2">
        					<label class="lab2" for="cBxDetM2" >Flexible Dates</label>
        				</div>
        			</div>

    <!-- --------------------------- --   resWhiCont end    -----------------------------------------------   /-->

    			<!-- resWhiCont started /-->
    			<div id="mdetails" class="resWhiCont">
    				<!-- resWhiInn stared /-->
    				<div class="resWhiInn">
    					 <!-- reserInnWrp started /-->
    					 <div class="reserInnWrp">
    						 <h3 class="reserHd">Details</h3>
    						 <div class="clear"></div>
                             <div class="rsrvDtailWp wid100">
    							<div class="reserInpWrp scc mstay-at">
    								<span class="st">Stay At</span>
    								<a class="reserEditIc" href="javascript:;" onclick="medit_stayat();"></a>
    								<div class="clear"></div>
    								<span class="nd">New Delhi</span>
    							</div>
                             </div>
                             <div class="rsrvDtailWp wid100">
    							<div class="reserInpWrp scc mstay-checkin">
    								<span class="st">Check IN</span>
    								<a class="reserEditIc" href="javascript:;" onclick="medit_checkin();"></a>
    								<div class="clear"></div>
    								<span class="nd"></span>
    							</div>
                             </div>
                             <div class="rsrvDtailWp wid100">
    							<div class="reserInpWrp scc mstay-checkout">
    								<span class="st">Check OUT</span>
    								<a class="reserEditIc" href="javascript:;" id="mcheckOutEdit" onclick="medit_checkout();"></a>
    								<div class="clear"></div>
    								<span class="nd"></span>
    							</div>
                             </div>
    						 <div class="rsrvDtailWp mobsel">
    						      <div class="reserInpWrp">
    						           <input type="text" id="numberOfRoomsWidMob" placeholder="1 Room / Suites" class="reserInp itc_custom_input">
    								   <a class="plIc" href="#"></a>
    						           <a class="mnIc inAct" href="#"></a>
    						      </div>
    							   <div class="clear"></div>
                                  <ul class="prmCDd autoSugg">
                                      <li class="drpAct"><a>1 Room</a></li>
                                      <li><a>2 Rooms</a></li>
                                      <li><a>3 Rooms</a></li>
                                      <li><a>4 Rooms</a></li>
                                  </ul>
                             </div>
                             <div class="rsrvDtailWp fRig mobsel">
                                  <div class="reserInpWrp ">
    						           <input type="text" id="numberOfAdultsWidMob" placeholder="1 Adult" class="reserInp itc_custom_input">
    								   <a class="plIc" href="#"></a>
    						           <a class="mnIc inAct" href="#"></a>
    						      </div>
    							   <div class="clear"></div>
                                  <ul class="prmCDd autoSugg">
                                      <li class="drpAct"><a>1 Adult/room</a></li>
                                      <li><a>2 Adults/room</a></li>
                                      <li><a>3 Adults/room</a></li>
                                  </ul>
                             </div>
                             <div class="rsrvDtailWp wid100 promoDropdownWidMob">
                                  <div class="reserInpWrp">
    						           <input type="text" id="promoCodeNameMob" placeholder="Promo Code" class="reserInp itc_custom_input" readonly>
    						           <a class="blkDnIc" href="javascript:;"></a>
    						      </div>
    							  <div class="clear"></div>
                                  <ul class="prmCDd autoSugg">
                                     <li><a>Promotional</a></li>
                                     <li><a>None</a></li>
                                  </ul>
                             </div>

                             <div class="cdeWp promocodeValueWidMob">
                                  <div class="reserInpWrp">
    						           <input type="text" id="promocodeValueMob" placeholder="Type Your Code" class="reserInp alphaNum" onkeyup="showClsBtn(this);">
    								   <a onclick="deleteCode(this);" href="javascript:;" class="cls5"></a>
    				              </div>
    				              <div class="clear"></div>
                                  <div class="errwp" id="promoErrorMob">

    						      </div>
                                  <div class="clear"></div>
    					     </div>
    					     <div class="clear"></div>
    						 <a href="javascript:;" class="btn" onclick="findHotels();">Find</a>
    					 </div>
    					 <!-- reserInnWrp end /-->
    				</div>
    				<!-- resWhiInn end /-->
    			</div>
    			<!-- resWhiCont end /-->
    			<div class="clear"></div>
    		</div>
    		<!-- Reservations end /-->

    	  <!-- searM started /-->
    	  <div class="searM" id="searM_01">
    	  	<div class="searCont_2">
    	  		  <div class="serPar">
    					<h2>Search</h2>
    					<input type="text" placeholder="Search" class="searInput">
    			  </div>
    			  <div class="clear"></div>
    			  <ul class="searUl defaultSrc clearfix " style="display:block;">
    					<li><a href="#">Hotel & Resorts</a></li>
    					<li><a href="#"> Luxury Living</a></li>
    					<li><a href="#">Luxury Cuisine</a></li>
    					<li><a href="#"> Wellness</a></li>
    					<li><a href="#"> Offers</a></li>
    					<li><a href="#"> Meetings</a><div class="clear"></div></li>
    			  </ul>
    			  <div class="atsgt custSrc">
    					<ul class="asistncUl clearfix ">
    						<li><a href="javascript:;"><span class="asHd1">ITC Maratha</span></a></li>
    						<li><a href="javascript:;"><span class="asHd1">ITC Maurya</span></a></li>
    					</ul>
    			  </div>
    		</div>

    	  </div>
    	  <!-- searM end /-->

        </div>
        <!-- resSearM started /-->
    	</div>
    	<!-- mobile end /-->
</div>


</c:if>

<!-- --------------------------------------- desktop widget --------------------------------------- -->
<c:if test = "${currentPage.properties.excludeReservationWidgetDesktop ne 'true'}">
			<div class="search-cont">
                <button class="search-btn" onclick="findHotels()">${properties.submitbuttonTextBox}</button>
                <div class="search-row1">
                    <ul>
                        <li class="search-rowItem">
                                <div class="reserInpWrp" style="display:block; ">
                                        <form name="frmSearch" method="post" onsubmit="return searchSubmit();">
                                                 <textarea class="search-text" id="stayat_txt" spellcheck="false" type="text" class="reserInp" placeholder="Hotel, Destination, Airport"  href="javascript:;"></textarea>

                                        </form>
                                    </div>
                             <div id ="reserContNew" class="reserContNew">
                                     <div class="reserScroll">
                                        <ul id="stayat" class="reserDrpUl dynamicDropdownAppend">
                                        </ul>
                                    </div>
                            </div>
                        </li>

                        <li class="search-rowItem">
                            <div class="checkdate-cont checkin">
                                <div class="chk-text">Check-in</div>
                                <div class="chk-mon-date-cont">
                                    <div class="chk-date">4</div>
                                    <div class="chk-daymon"><span class="chk-day">Day</span> <span class="chk-mon">Mon</span></div>
                                </div>
                            </div>
                            <div class="checkdate-cont checkout">
                                <div class="chk-text">Check-Out</div>
                                <div class="chk-mon-date-cont">
                                    <div class="chk-date">4</div>
                                    <div class="chk-daymon"><span class="chk-day">Day</span> <span class="chk-mon">Mon</span></div>
                                </div>
                        </div>
                        <div class="checkdate-drop-cont">
                            <div class="checkin-cal">
                                <div type="text" id="checkin-date" class="e1"></div>
                            </div>
                            <div class="checkout-cal">
                                <div type="text" id="checkout-date" class="e2"></div>
                            </div>
                            <div class="cal-btns">
								<button class="flexible-rates" onclick="setFlex()">Flexible Dates</button>
                                <a class="clear-dates" href="#">Clear</a>
                            </div>
                        </div>
                        </li>
                    </ul>

                </div>
                <div class="search-row2">
                    <ul>
                        <li class="search-rowItem acc-cont drop-up">
                            <div class="acc-details">
                                <span class="acc-rooms">Room 1</span> | <span class="acc-adult">Adult/room 1</span> | <span class="acc-child">Child 1</span>
                            </div>
                            <div class="acc-drop-cont">
                                <ul class="acc-cont-ul">
                                    <li>
                                        <div class="acc-cont-desc">
                                           <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                     <td><input type="text" class="room-drp-count" placeholder="1 ${properties.roomsTextBoxDesktop}"readonly></td>
                                                    <td><a class="sub-room"href=""><img src="/content/dam/ITC/icons/backgroundimg/remove_ico.png"></a></td>
                                                    <td><a class="add-room" href=""><img src="/content/dam/ITC/icons/backgroundimg/add_ico.png"></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="acc-cont-desc">
                                            <table>
                                                <tr>
                                                   <td><input type="text" class="adult-drp-count" placeholder="1 ${properties.adultTextBoxDesktop}" readonly></td>
                                                   <td><a class="sub-adult" href=""><img src="/content/dam/ITC/icons/backgroundimg/remove_ico.png"></a></td>
                                                   <td><a class="add-adult" href=""><img src="/content/dam/ITC/icons/backgroundimg/add_ico.png"></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="acc-cont-desc">
                                            <table>
                                                <tr>
                                                      <td><input type="text" class="child-drp-count" placeholder="0 ${properties.childrenTextBoxDesktop}" readonly></td>
                                                      <td><a class="sub-child" href=""><img src="/content/dam/ITC/icons/backgroundimg/remove_ico.png"></a></td>
                                                      <td><a class="add-child" href=""><img src="/content/dam/ITC/icons/backgroundimg/add_ico.png"></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </li>
                                </ul>
                                <span class="error_mess" style="display: none">max occupants 4 allowed</span>
                            </div>
                        </li>
                        <li class="search-rowItem spcl-cont drop-up">
                            <div class="spl-rates">
                                <span>${properties.addSpecialRateTextBox}</span>
                            </div>
 						<!-- for special rates -->
						<c:if test = "${properties.specialRatesEnabling eq 'true'}">
                            <div class="spl-drop-cont">
                               <div class="spl-drop-wrap">
                                    <div class="spl-drop-left">
                                        <ul>
                                            <li>
                                                <input class="spl-rate-check" id="spl-quota-AAA" type="checkbox" />
                                                <label for="spl-quota-AAA">AAA Rate*</label>
                                            </li>
                                            <li>
                                                <input class="spl-rate-check" id="spl-quota-AARP" type="checkbox" />
                                                <label for="spl-quota-AARP">AARP Rate*</label>
                                            </li>
                                            <li>
                                                <input class="spl-rate-check" id="spl-quota-SEIOR" type="checkbox" />
                                                <label for="spl-quota-SEIOR">Senior Rate*</label>
                                            </li>
                                            <li>
                                                <input class="spl-rate-check" id="spl-quota-GOVTMIL" type="checkbox" />
                                                <label for="spl-quota-GOVTMIL">Government / Military Rates</label>
                                            </li>
                                            <li>
                                                <input class="spl-rate-check" id="spl-quota-TRAVELAGENT" type="checkbox" />
                                                <label for="spl-quota-TRAVELAGENT">Travel Agent</label>
                                            </li>
                                            <li><span class="desclaim">*ID  required at check in time</span></li>
                                        </ul>
                                    </div>
                                    <div class="spl-drop-right">
                                        <div class="offer-code">
                                            <input class="offer-code-input" type="text" name="offer-code" placeholder="Please enter the code">
                                            <div>
                                               <button class="code-apply">Apply</button> <a href="#" class="code-clear" onclick="$('.offer-code-input').val('');$('.spl-rates span').text('${properties.addSpecialRateTextBox}')">Clear</a>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                            </div>
                            </c:if>
							<!-- special rate ends
							 None speacial rate starts -->
                            <c:if test = "${properties.specialRatesEnabling ne 'true'}">
							<div class="spl-drop-cont spl-drop-cont2">
                               <div class="spl-drop-wrap">
                                    <div class="spl-drop-right spl-drop-right2">
                                        <div class="offer-code">
                                            <input class="offer-code-input" type="text" name="offer-code" placeholder="Please enter the code">
                                            <div>
                                                <button class="code-apply">Apply</button> <a href="#" class="code-clear" onclick="$('.offer-code-input').val('');$('.spl-rates span').text('${properties.addSpecialRateTextBox}')">Clear</a>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                            </div>
                            </c:if>
							<!-- None special rate ends -->
                        </li>
						<c:if test = "${properties.redeemPointSelection eq 'true'}">
                        <li class="search-rowItem spcl-cont drop-up">
                            <div class="clb-points">
                                <input id="itc-clb-pts" type="checkbox" />
                                <label for="itc-clb-pts">${properties.useClubITCTextBox}</label>
                            </div>
                        </li>
                        </c:if>
                    </ul>

                </div>
            </div>

</c:if>
<cq:includeClientLib js="reservationwidgetV2"/>

<script src="https://rawgit.com/jquery/jquery-mousewheel/master/jquery.mousewheel.js"></script>


<script>
    $(document).ready(function (){
    $('.overlayCont').css('background-image', 'url(' + backImage + ')');
    });

 if(currentResource == "" || currentResource == undefined){

     $('#mstayat_txt').prop("placeholder",$('#configText').val());
       $('#stayat_txt').prop("placeholder",$('#configText').val());
 }
    else{

        $('#mstayat_txt').prop("value",currentResource);
        $('#stayat_txt').prop("value",currentResource);
        //mselectCity(currentResource,'Destination');
	 }

</script>