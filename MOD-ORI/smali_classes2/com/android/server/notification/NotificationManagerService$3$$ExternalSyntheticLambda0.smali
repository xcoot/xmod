.class public final synthetic Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$3;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$3;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$3;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$5:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 14
    .line 15
    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$7:I

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 20
    .line 21
    const-string v0, "Bad notification(tag="

    .line 22
    .line 23
    const-string v7, ", id="

    .line 24
    .line 25
    const-string v9, ") posted from package "

    .line 26
    .line 27
    invoke-static {v5, v0, v1, v7, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, ", crashing app(uid="

    .line 32
    .line 33
    const-string v5, ", pid="

    .line 34
    .line 35
    invoke-static {v2, v4, v1, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "): "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/4 v7, 0x1

    .line 54
    const/4 v5, -0x1

    .line 55
    move-object v1, p0

    .line 56
    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
