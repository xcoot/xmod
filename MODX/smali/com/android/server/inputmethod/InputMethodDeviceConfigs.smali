.class public final Lcom/android/server/inputmethod/InputMethodDeviceConfigs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

.field public mHideImeWhenNoEditorFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodDeviceConfigs;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    .line 11
    const-string/jumbo v1, "input_method_manager"

    .line 14
    const-string/jumbo v2, "hide_ime_when_no_editor_focus"

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    move-result v2

    .line 22
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mHideImeWhenNoEditorFocus:Z

    .line 24
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    .line 3
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 6
    return-void
.end method
