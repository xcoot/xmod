.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/telephony/SubscriptionManager;

.field public final synthetic f$2:Landroid/os/ParcelUuid;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$1:Landroid/telephony/SubscriptionManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$2:Landroid/os/ParcelUuid;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$3:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$1:Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$2:Landroid/os/ParcelUuid;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;->f$3:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "Received null from getSubscriptionsInGroup"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
