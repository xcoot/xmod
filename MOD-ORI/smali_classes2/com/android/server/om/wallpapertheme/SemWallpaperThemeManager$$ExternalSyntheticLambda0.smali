.class public final synthetic Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;II)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iput p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->syncWallpaperThemeStateForUser(I)V

    .line 11
    .line 12
    .line 13
    const-string p0, "SWT_ThemeManager"

    .line 14
    .line 15
    const-string/jumbo v0, "syncWallpaperThemeStateForUser done"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$1:I

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 27
    .line 28
    .line 29
    const-string p0, "SWT_ThemeManager"

    .line 30
    .line 31
    const-string/jumbo v0, "saveWallpaperThemeState done"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveThemeParkSingleThemeState()V

    .line 41
    .line 42
    .line 43
    const-string p0, "SWT_ThemeManager"

    .line 44
    .line 45
    const-string v0, "[ThemePark FRRO] saveThemeParkSingleThemeState done"

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
