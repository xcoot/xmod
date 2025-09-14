.class public final Lcom/android/server/pm/DumpState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrief:Z

.field public mCheckIn:Z

.field public mFullPreferred:Z

.field public mOptions:I

.field public mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field public mTargetPackageName:Ljava/lang/String;

.field public mTitlePrinted:Z

.field public mTypes:I


# virtual methods
.method public final isDumping(I)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final isOptionEnabled(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final setDump(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    .line 5
    .line 6
    return-void
.end method
