.class public final Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->uid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
