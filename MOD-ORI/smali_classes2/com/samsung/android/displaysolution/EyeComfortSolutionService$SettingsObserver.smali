.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
