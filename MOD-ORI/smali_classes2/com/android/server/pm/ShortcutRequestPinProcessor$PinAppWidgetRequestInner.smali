.class public final Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method
