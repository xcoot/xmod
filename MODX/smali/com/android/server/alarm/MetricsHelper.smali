.class public final Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    .line 8
    return-void
.end method
