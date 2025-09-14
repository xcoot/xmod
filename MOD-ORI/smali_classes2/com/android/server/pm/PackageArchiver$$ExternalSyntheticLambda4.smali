.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/IntentSender;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$2:Landroid/content/IntentSender;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$3:Landroid/os/UserHandle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$2:Landroid/content/IntentSender;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$3:Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v4, "com.android.intent.action.UNARCHIVE_DIALOG"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "android.content.pm.extra.UNARCHIVE_INTENT_SENDER"

    .line 20
    .line 21
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    .line 25
    .line 26
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    new-instance v5, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v4, "android.content.pm.extra.UNARCHIVE_STATUS"

    .line 38
    .line 39
    const/4 v6, -0x1

    .line 40
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v4, "android.intent.extra.INTENT"

    .line 44
    .line 45
    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string v3, "android.intent.extra.USER"

    .line 49
    .line 50
    invoke-virtual {v5, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p0, ""

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1, p0, v5}, Lcom/android/server/pm/PackageArchiver;->sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
