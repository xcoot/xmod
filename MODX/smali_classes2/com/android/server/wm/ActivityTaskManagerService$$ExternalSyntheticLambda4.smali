.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p2, Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    move-object v0, p2

    .line 35
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v3, "com.google.android.googlequicksearchbox"

    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    check-cast p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
