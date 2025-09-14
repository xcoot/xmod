.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/ActivityManagerInternal;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/ActivityManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/app/ActivityManagerInternal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string/jumbo p0, "package"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    .line 18
    .line 19
    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    const/high16 p0, 0x4000000

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "android.intent.extra.PACKAGE_NAME"

    .line 28
    .line 29
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p0, "android.intent.extra.USER_ID"

    .line 33
    .line 34
    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    .line 38
    .line 39
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 48
    .line 49
    .line 50
    return-void
.end method
