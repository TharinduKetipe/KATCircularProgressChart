# KATCircularProgressChart

[![CI Status](http://img.shields.io/travis/TharinduKetipe/KATCircularProgressChart.svg?style=flat)](https://travis-ci.org/TharinduKetipe/KATCircularProgressChart)
[![Version](https://img.shields.io/cocoapods/v/KATCircularProgressChart.svg?style=flat)](http://cocoapods.org/pods/KATCircularProgressChart)
[![License](https://img.shields.io/cocoapods/l/KATCircularProgressChart.svg?style=flat)](http://cocoapods.org/pods/KATCircularProgressChart)
[![Platform](https://img.shields.io/cocoapods/p/KATCircularProgressChart.svg?style=flat)](http://cocoapods.org/pods/KATCircularProgressChart)

<img src="https://github.com/TharinduKetipe/KATCircularProgressChart/blob/master/Resources/CircularProgressDemo.gif" height=700>

On HUD => https://github.com/TharinduKetipe/KATCircularProgressChart

- [Features](#features)
- [Example](#example)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Strength](#strength)
- [Author](#author)
- [License](#license)

## Features
- Circular Progress Chart with animation.
- Bar thickness can be customized.
- Animation duration can be customized.
- Also can be used as a Pie Chart by increasing the bar thickness.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

or [appetize.io](https://appetize.io/embed/za9vn208hgzjt7059v7d3ty4ur)

## Requirements
- iOS 8.0+
- Xcode 8.0+

## Installation

KATCircularProgressChart is available through [CocoaPods](http://cocoapods.org).

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

After the CocoaPod installation , To install KATCircularProgressChart simply add the following line to your Podfile:

```ruby
pod 'KATCircularProgressChart'
```
or 

```ruby
pod 'KATCircularProgressChart', '1.0.0'
```
Then, run the following command:

```bash
$ pod install
```
### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate KATCircularProgressChart into your project manually.
Just need to add "KATCircularProgress.h" and "KATCircularProgress.h" files to your project.


## Usage

First import "KATCircularProgress.h" file to your ViewController.

```objc
#import "KATCircularProgress.h"
```
Then create a UIView from the storyboard which contains the same width and height. Then make an outlet to your ViewController.

```objc
#import "ViewController.h"
#import "KATCircularProgress.h"

@interface ViewController () {

}

@property (strong, nonatomic) IBOutlet KATCircularProgress *ProgressChart;

@end

```
Each entry you need to add as a SliceItem object which contains itemValue (float) and ItemColor (UIColor).Create few slice items
like this.

```objc
SliceItem *item1 = [[SliceItem alloc] init];
item1.itemValue = 50.0; // value should be a float value
item1.itemColor = [UIColor blueColor]; // color should be a UIColor value

SliceItem *item2 = [[SliceItem alloc] init];
item2.itemValue = 100.0;
item2.itemColor = [UIColor greenColor];

SliceItem *item3 = [[SliceItem alloc] init];
item3.itemValue = 150.0;
item3.itemColor = [UIColor yellowColor];

```
Then add these objects to sliceItems array which is property of your KATCircularProgress.

```objc
[self.ProgressChart.sliceItems addObject:item1];
[self.ProgressChart.sliceItems addObject:item2];
[self.ProgressChart.sliceItems addObject:item3];

```
When you are using this chart again and again (Like in a list view) Please make sure clear the array before adding the new items.

```objc
[self.ProgressChart.sliceItems removeAllObjects];

```
Finaly reload the progress chart.

```objc
[self.ProgressChart reloadData];

```
Here is the full code snippet.

```objc
#import "ViewController.h"
#import "KATCircularProgress.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet KATCircularProgress *progressChart;

@end

@implementation ViewController

- (void)viewDidLoad {
[super viewDidLoad];

SliceItem *item1 = [SliceItem new];
item1.itemValue = 25.0;
item1.itemColor = [UIColor greenColor];

SliceItem *item2 = [SliceItem new];
item2.itemValue = 35.0;
item2.itemColor = [UIColor yellowColor];

SliceItem *item3 = [SliceItem new];
item3.itemValue = 125.0;
item3.itemColor = [UIColor orangeColor];

SliceItem *item4 = [SliceItem new];
item4.itemValue = 75.0;
item4.itemColor = [UIColor blueColor];

[self.ProgressChart.sliceItems removeAllObjects];

[self.progressChart.sliceItems addObject:item1];
[self.progressChart.sliceItems addObject:item2];
[self.progressChart.sliceItems addObject:item3];
[self.progressChart.sliceItems addObject:item4];

[self.progressChart reloadData];

}

@end


```

For more information please refer the example project. It contains more details about
how to use this pod with UITableView for the list populations.

## Customization

You can change the bar thickness of the chart as you want.

```objc
[self.ProgressChart setLineWidth:30.0];

```

Also you can adjust the animation duration as well.

```objc
[self.ProgressChart setAnimationDuration:2.5];

```


## Strength
This is really simple chart you can build lot more complex animations upon this. We are guranteed this
comes with high performace without UI lagging or any performace issues.

## Author

Tharindu Ketipearachchi, katramesh91@gmail.com

[linkedIn](https://www.linkedin.com/in/tharinduketipe)

## License

KATCircularProgressChart is available under the MIT license. See the LICENSE file for more info.
