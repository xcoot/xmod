.class public final synthetic Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "com.samsung.android.scpm.policy"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "SoundAppPolicyManager"

    .line 22
    .line 23
    const-string v1, "init SCPMv2"

    .line 24
    .line 25
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateAppList()V

    .line 35
    .line 36
    .line 37
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateLiveTranslateList()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
