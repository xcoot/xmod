.class public interface abstract Lcom/android/server/display/mode/DisplayModeDirector$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MIN_REFRESH_RATE_URI:Landroid/net/Uri;

.field public static final PEAK_REFRESH_RATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "peak_refresh_rate"

    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 10
    const-string/jumbo v0, "min_refresh_rate"

    .line 13
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 19
    return-void
.end method
