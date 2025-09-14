.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "display_manager"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "enable_hdr_output_control"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 20
    .line 21
    return-void
.end method
