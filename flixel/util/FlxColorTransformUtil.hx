package flixel.util;

import openfl.geom.ColorTransform;

class FlxColorTransformUtil
{
	public static function setMultipliers(transform:ColorTransform, red:Float, green:Float, blue:Float, alpha:Float):ColorTransform
	{
		transform.redMultiplier = red;
		transform.greenMultiplier = green;
		transform.blueMultiplier = blue;
		transform.alphaMultiplier = alpha;

		return transform;
	}
	
	/**
	 * Helper for transform.setMultipliers(color.redFloat, color.greenFloat, color.blueFloat, color.alphaFloat)
	 * @since 5.9.0
	 */
	public static inline function setMultipliersFromColor(transform:ColorTransform, color:FlxColor):ColorTransform
	{
		return setMultipliers(transform, color.redFloat, color.greenFloat, color.blueFloat, color.alphaFloat);
	}

	public static function setOffsets(transform:ColorTransform, red:Float, green:Float, blue:Float, alpha:Float):ColorTransform
	{
		transform.redOffset = red;
		transform.greenOffset = green;
		transform.blueOffset = blue;
		transform.alphaOffset = alpha;

		return transform;
	}
	
	/**
	 * Helper for transform.setOffsets(color.redFloat, color.greenFloat, color.blueFloat, color.alphaFloat)
	 * @since 5.9.0
	 */
	public static inline function setOffsetsFromColor(transform:ColorTransform, color:FlxColor):ColorTransform
	{
		return setOffsets(transform, color.redFloat, color.greenFloat, color.blueFloat, color.alphaFloat);
	}
	
	/**
	 * Returns whether red, green, or blue multipliers are set to anything other than 1.
	 */
	public static function hasRGBMultipliers(transform:ColorTransform):Bool
	{
		return transform.redMultiplier != 1 || transform.greenMultiplier != 1 || transform.blueMultiplier != 1;
	}

	/**
	 * Returns whether red, green, blue, or alpha multipliers are set to anything other than 1.
	 */
	public static function hasRGBAMultipliers(transform:ColorTransform):Bool
	{
		return hasRGBMultipliers(transform) || transform.alphaMultiplier != 1;
	}

	/**
	 * Returns whether red, green, or blue offsets are set to anything other than 0.
	 */
	public static function hasRGBOffsets(transform:ColorTransform):Bool
	{
		return transform.redOffset != 0 || transform.greenOffset != 0 || transform.blueOffset != 0;
	}

	/**
	 * Returns whether red, green, blue, or alpha offsets are set to anything other than 0.
	 */
	public static function hasRGBAOffsets(transform:ColorTransform):Bool
	{
		return hasRGBOffsets(transform) || transform.alphaOffset != 0;
	}
}
