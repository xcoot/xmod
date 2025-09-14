.class public final Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p1, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 21
    .line 22
    return-void
.end method
