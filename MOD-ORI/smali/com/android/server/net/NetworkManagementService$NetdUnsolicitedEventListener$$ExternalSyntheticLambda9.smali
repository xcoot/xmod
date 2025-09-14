.class public final synthetic Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$3:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$2:J

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;->f$3:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v4, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;

    .line 15
    .line 16
    invoke-direct {v4, v1, v2, v3, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
