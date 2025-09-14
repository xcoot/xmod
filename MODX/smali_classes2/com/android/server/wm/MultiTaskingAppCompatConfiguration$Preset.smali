.class public interface abstract annotation Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LARGE_SCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    sput v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;->DEFAULT:I

    .line 15
    .line 16
    return-void
.end method
