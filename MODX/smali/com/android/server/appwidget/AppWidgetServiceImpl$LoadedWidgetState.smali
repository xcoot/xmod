.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final hostTag:I

.field public final providerTag:I

.field public final widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 6
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    .line 8
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    .line 10
    return-void
.end method
