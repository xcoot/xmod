.class public final Lcom/android/server/DssController$DssAppDate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    .line 11
    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    .line 13
    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    .line 15
    return-void
.end method
