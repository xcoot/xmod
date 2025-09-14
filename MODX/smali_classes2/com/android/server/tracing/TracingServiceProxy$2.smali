.class Lcom/android/server/tracing/TracingServiceProxy$2;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$2;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    .line 2
    .line 3
    const/16 v3, 0x21

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3a98

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRequestTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    return-wide v0
.end method
