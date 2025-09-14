.class public Lcom/android/server/media/CustomSessionPolicyProvider;
.super Lcom/android/server/media/MediaSessionPolicyProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSessionPoliciesForApplication(ILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 2
    .line 3
    const-string/jumbo p1, "media_button_deny"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
