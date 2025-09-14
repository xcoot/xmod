.class public interface abstract Lcom/android/server/audio/PlayerFocusEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
.end method

.method public abstract fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
.end method

.method public abstract forgetUid(I)V
.end method

.method public abstract getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
.end method

.method public abstract getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J
.end method

.method public abstract mutePlayersForCall([I)V
.end method

.method public abstract restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
.end method

.method public abstract shouldEnforceFade()Z
.end method

.method public abstract unmutePlayersForCall()V
.end method
