.class public final synthetic Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 6
    iput p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$2:Z

    .line 10
    iput-wide p4, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$3:J

    .line 12
    iput p6, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$4:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 3
    iget v2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget-boolean v4, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$2:Z

    .line 7
    iget-wide v5, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$3:J

    .line 9
    iget v3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;->f$4:I

    .line 11
    iget-object p0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;-><init>(IIZJ)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 25
    return-void
.end method
