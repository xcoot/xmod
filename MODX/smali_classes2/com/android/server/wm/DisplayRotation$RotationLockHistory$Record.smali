.class public final Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mTimestamp:J

.field public final mUserRotation:I

.field public final mUserRotationMode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mTimestamp:J

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotationMode:I

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotation:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mCaller:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
