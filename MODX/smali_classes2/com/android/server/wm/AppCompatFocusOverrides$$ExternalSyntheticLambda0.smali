.class public final synthetic Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 4
    .line 5
    const-string v0, "enable_compat_fake_focus"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
