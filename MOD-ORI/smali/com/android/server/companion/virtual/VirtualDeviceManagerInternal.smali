.class public abstract Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract getAllPersistentDeviceIds()Ljava/util/Set;
.end method

.method public abstract getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
.end method

.method public abstract getDeviceIdsForUid(I)Landroid/util/ArraySet;
.end method

.method public abstract getDeviceOwnerUid(I)I
.end method

.method public abstract getDisplayIdsForDevice(I)Landroid/util/ArraySet;
.end method

.method public abstract getPersistentIdForDevice(I)Ljava/lang/String;
.end method

.method public abstract getPreferredLocaleListForUid(I)Landroid/os/LocaleList;
.end method

.method public abstract getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;
.end method

.method public abstract isAppRunningOnAnyVirtualDevice(I)Z
.end method

.method public abstract isInputDeviceOwnedByVirtualDevice(I)Z
.end method

.method public abstract onAuthenticationPrompt(I)V
.end method

.method public abstract onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
.end method
