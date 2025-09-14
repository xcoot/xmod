.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHostname:Ljava/lang/String;

.field public final mLatencyMs:I

.field public final mNetId:I

.field public final mReturnCode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 6
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 8
    iput-object p5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 12
    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    .line 14
    return-void
.end method
