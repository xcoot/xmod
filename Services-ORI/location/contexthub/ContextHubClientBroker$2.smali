.class public final Lcom/android/server/location/contexthub/ContextHubClientBroker$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic val$onFinishedCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    :goto_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
