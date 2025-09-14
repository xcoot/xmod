.class public final Lcom/android/server/pm/DexOptHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$artManager:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public constructor <init>(Lcom/android/server/art/ArtManagerLocal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/art/ArtManagerLocal;->scheduleBackgroundDexoptJob()I

    .line 7
    .line 8
    .line 9
    return-void
.end method
