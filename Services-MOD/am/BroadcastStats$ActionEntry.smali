.class public final Lcom/android/server/am/BroadcastStats$ActionEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mBackgroundCheckViolations:Landroid/util/ArrayMap;

.field public mMaxDispatchTime:J

.field public final mPackages:Landroid/util/ArrayMap;

.field public mReceiveCount:I

.field public mSkipCount:I

.field public mTotalDispatchTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 18
    iput-object p1, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    .line 20
    return-void
.end method
