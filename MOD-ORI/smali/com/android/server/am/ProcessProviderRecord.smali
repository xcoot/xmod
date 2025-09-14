.class public final Lcom/android/server/am/ProcessProviderRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mConProviders:Ljava/util/ArrayList;

.field public mLastProviderTime:J

.field public final mPubProviders:Landroid/util/ArrayMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hasProvider(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
