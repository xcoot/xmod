.class public final Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# instance fields
.field public final maxVersionCode:J

.field public final minVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 2
    .line 3
    const-wide/high16 v1, -0x8000000000000000L

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    .line 7
    .line 8
    return-void
.end method
