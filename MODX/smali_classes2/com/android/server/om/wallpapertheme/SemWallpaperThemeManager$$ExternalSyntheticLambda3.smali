.class public final synthetic Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->applyDynamicColor()V

    .line 9
    .line 10
    .line 11
    const-string p0, "SWT_ThemeManager"

    .line 12
    .line 13
    const-string v0, "applyDynamicColor done"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    .line 20
    .line 21
    .line 22
    const-string p0, "SWT_ThemeManager"

    .line 23
    .line 24
    const-string/jumbo v0, "saveWallpaperThemeColor done"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
