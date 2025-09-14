.class public final synthetic Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CoreSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CoreSettingsObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CoreSettingsObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CoreSettingsObserver;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
