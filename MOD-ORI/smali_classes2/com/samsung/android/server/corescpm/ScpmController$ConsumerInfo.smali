.class public abstract Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiverPackageName:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android"

    .line 7
    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hz6wdikdtw"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
