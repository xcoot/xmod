.class public final synthetic Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$3:Landroid/content/pm/ParceledListSlice;

    .line 12
    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$4:Landroid/content/IntentSender;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$3:Landroid/content/pm/ParceledListSlice;

    .line 9
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;->f$4:Landroid/content/IntentSender;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string p0, "AppIntegrityManagerServiceImpl"

    .line 16
    const/4 v5, 0x1

    .line 17
    :try_start_0
    iget-object v6, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 19
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/integrity/IntegrityFileManager;->writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    move v3, v5

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    .line 29
    const-string v6, "Error writing rules."

    .line 31
    invoke-static {p0, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    const/16 v6, 0xf8

    .line 37
    invoke-static {v6, v3, v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v7, Landroid/content/Intent;

    .line 42
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 45
    xor-int/lit8 v1, v3, 0x1

    .line 47
    const-string v2, "android.content.integrity.extra.STATUS"

    .line 49
    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    :try_start_1
    iget-object v5, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    const-string v1, "Error sending status feedback."

    .line 64
    invoke-static {p0, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_1
    return-void
.end method
