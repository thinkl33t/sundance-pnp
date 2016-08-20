[[!meta title="Sundance notes, 2016-08-19"]]

Use a basic construction like the Shapeoko 2.

Bob has ordered 5m of belt and some pulleys (20 quid ish?)

ACTION: Bob to examine what he has at home wrt. extrusion to use, and then
think about design of plates.

We decided to use die-bond rather than solid alu for the plates since that
is lighter, cheaper, and easier to machine.  We may migrate to rack/gear if
the belts prove unreliable at speed.

We tested the Shapeoko2 and it seemed to be able to move rapidly with reasonable
ease.  60,000 mm/minute was achievable, and the Z axis was capable of some
speed, though we're likely to use belt instead of thread-screw for the Z.

Baseplate notes
===============

M4 holes, 25mm grid.

Main mounting holes 100mm apart, central hole is at 175mm, 200mm.

Orient baseplate with camera cutout south-east.

Feeders from front.

Vacuum plans
============

We looked at pumps in the space, nothing looked great.  Ebay sadly only had
chinese suppliers so we've not got further with that.

ACTION: Need to think about pneumatic valves, hollow shaft NEMA motors etc.


Upward facing camera
====================

To go in the south-east corner of the base, there's a good 100mm by 100mm space
which we can use to house vision and target marks.


Software And Electronics
========================
Bob has a ZeroPi, a CNC control board that mounts on top of a raspberry pi and
provides 4 axes and 2 FET outputs, alongside 11 LV IO pins.
