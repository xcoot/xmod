.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;ILandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 10
    .line 11
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 29
    .line 30
    .line 31
    return-void
.end method
