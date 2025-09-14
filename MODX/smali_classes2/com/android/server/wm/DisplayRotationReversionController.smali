.class public final Lcom/android/server/wm/DisplayRotationReversionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSlots:[Z

.field public mUserRotationOverridden:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Z

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final beforeOverrideApplied(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ge v3, v4, :cond_2

    .line 17
    .line 18
    aget-boolean v4, v0, v3

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v2, v5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 28
    .line 29
    iget v2, v1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 30
    .line 31
    if-ne v2, v5, :cond_3

    .line 32
    .line 33
    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 34
    .line 35
    iput v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    .line 36
    .line 37
    :cond_3
    aput-boolean v5, v0, p1

    .line 38
    .line 39
    return-void
.end method

.method public final revertOverride(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    aput-boolean v2, v0, p1

    .line 10
    .line 11
    move p1, v2

    .line 12
    :goto_0
    const/4 v1, 0x3

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge p1, v1, :cond_2

    .line 15
    .line 16
    aget-boolean v1, v0, p1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move p1, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move p1, v2

    .line 26
    :goto_1
    if-eqz p1, :cond_4

    .line 27
    .line 28
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 29
    .line 30
    aget-boolean p0, p0, v3

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    const-wide v4, -0x3ba112cfb9fbc912L    # -2.2819742391242918E21

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    return v2

    .line 48
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 51
    .line 52
    iget v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    if-eq v0, v1, :cond_5

    .line 56
    .line 57
    iget v4, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 58
    .line 59
    if-ne v4, v3, :cond_5

    .line 60
    .line 61
    const-string v2, "DisplayRotationReversionController#revertOverride"

    .line 62
    .line 63
    invoke-virtual {p1, v3, v0, v2}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    return v2
.end method
