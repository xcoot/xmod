.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8
    .line 9
    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "listener:"

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v1, p0

    .line 43
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
