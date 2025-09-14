.class public final Lcom/android/server/CustomizedBinderCallsStatsInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mContext:Landroid/content/Context;

.field public mLastNotifyTime:J

.field public mLastStoreTime:J

.field public mLastWriteTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method
