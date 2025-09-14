.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/AttributionSource;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$3:Landroid/content/AttributionSource;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$3:Landroid/content/AttributionSource;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->f$4:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v2, v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
