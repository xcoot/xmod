.class public final synthetic Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/OneHandOpPolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v2, "com.samsung.action.EASYONEHAND_SERVICE"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/content/ComponentName;

    .line 16
    .line 17
    const-string v3, "com.sec.android.easyonehand"

    .line 18
    .line 19
    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne p0, v2, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    const-string v2, "StartByHomeKey"

    .line 34
    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method
