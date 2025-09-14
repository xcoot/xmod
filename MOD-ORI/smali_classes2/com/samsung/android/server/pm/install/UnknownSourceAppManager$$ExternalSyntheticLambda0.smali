.class public final synthetic Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;IILandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v4, "startUnknownSourceConfirmDialog for session: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ", type: "

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v4, "UnknownSourceAppManager"

    .line 38
    .line 39
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .line 46
    .line 47
    const v4, 0x10008000

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v4, "android.content.pm.extra.SESSION_ID"

    .line 54
    .line 55
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x96

    .line 59
    .line 60
    if-ne v2, v1, :cond_0

    .line 61
    .line 62
    const-class v1, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-class v1, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;

    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    :goto_0
    const-string v1, "android.content.pm.extra.unknown.installtype"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v3, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
