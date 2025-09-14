.class public final Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final maxSdk:I

.field public final minSdk:I

.field public final values:Ljava/util/Map;


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    .line 7
    .line 8
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method
