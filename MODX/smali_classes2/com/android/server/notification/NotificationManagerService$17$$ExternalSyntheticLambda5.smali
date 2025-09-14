.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
