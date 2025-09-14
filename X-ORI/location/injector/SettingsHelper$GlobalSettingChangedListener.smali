.class public interface abstract Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# virtual methods
.method public abstract onSettingChanged()V
.end method

.method public onSettingChanged(I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;->onSettingChanged()V

    return-void
.end method
