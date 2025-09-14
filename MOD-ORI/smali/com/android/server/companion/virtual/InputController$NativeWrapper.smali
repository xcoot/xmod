.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final closeUinput(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 6

    .line 1
    move v0, p2

    .line 2
    move v1, p3

    .line 3
    move v2, p5

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p4

    .line 6
    move v5, p6

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputStylus(IIILjava/lang/String;Ljava/lang/String;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public final openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 6

    .line 1
    move v0, p2

    .line 2
    move v1, p3

    .line 3
    move v2, p5

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p4

    .line 6
    move v5, p6

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public final writeButtonEvent(JIIJ)Z
    .locals 6

    .line 1
    move v0, p3

    .line 2
    move v1, p4

    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p5

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(IIJJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final writeDpadKeyEvent(JIIJ)Z
    .locals 6

    .line 1
    move v0, p3

    .line 2
    move v1, p4

    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p5

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final writeKeyEvent(JIIJ)Z
    .locals 6

    .line 1
    move v0, p3

    .line 2
    move v1, p4

    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p5

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(IIJJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final writeRelativeEvent(JFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final writeScrollEvent(JFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final writeStylusButtonEvent(JIIJ)Z
    .locals 6

    .line 1
    move v0, p3

    .line 2
    move v1, p4

    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p5

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusButtonEvent(IIJJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final writeStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final writeTouchEvent(JIIIFFFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
